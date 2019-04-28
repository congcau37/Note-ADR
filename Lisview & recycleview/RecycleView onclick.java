
class RecyclerViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnLongClickListener {
    TextView txtName;
    ImageView imgType;

    private RecycleViewMainAdapter.ItemClickListener itemClickListener;

    public RecyclerViewHolder(View itemView) {
        super(itemView);
        txtName = (TextView) itemView.findViewById(R.id.txt_name);
        imgType = itemView.findViewById(R.id.img_type);
        itemView.setOnClickListener(this);
        itemView.setOnLongClickListener(this);
    }

    public void setItemClickListener(RecycleViewMainAdapter.ItemClickListener itemClickListener) {
        this.itemClickListener = itemClickListener;
    }

    @Override
    public void onClick(View v) {
        itemClickListener.onClick(v, getAdapterPosition(), false);
    }

    @Override
    public boolean onLongClick(View v) {
        itemClickListener.onClick(v, getAdapterPosition(), true);
        return true;
    }
}

public class RecycleViewMainAdapter extends RecyclerView.Adapter<RecyclerViewHolder> {

    private List<JapaneseItem> listData = new ArrayList<>();
    private Context context;
    RecycleViewListener listener;

    public RecycleViewMainAdapter(List<JapaneseItem> listData, Context context) {
        this.listData = listData;
        this.context = context;
    }

    public void setListener(RecycleViewListener listener) {
        this.listener = listener;
    }

    @Override
    public RecyclerViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View itemView = inflater.inflate(R.layout.custom_item_list_main, parent, false);
        return new RecyclerViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(RecyclerViewHolder holder, int i) {
        holder.imgType.setImageBitmap(null);
        int res = holder.imgType.getContext().getResources().getIdentifier(listData.get(i).getThumbnail(), "drawable", holder.imgType.getContext().getPackageName());
        holder.imgType.setBackgroundResource(res);
        holder.txtName.setText(listData.get(i).getWord());
        holder.setItemClickListener(new ItemClickListener() {
            @Override
            public void onClick(View view, int position, boolean isLongClick) {
//                if (isLongClick)
//                    Toast.makeText(context, "Long Click: " + listData.get(position), Toast.LENGTH_SHORT).show();
//                else
//                    Toast.makeText(context, " " + listData.get(position).getWord(), Toast.LENGTH_SHORT).show();
                if (listener != null) {
                    listener.nextActivity();
                }
            }
        });
    }

    @Override
    public int getItemCount() {
        return listData.size();
    }

    public interface ItemClickListener {
        void onClick(View view, int position, boolean isLongClick);
    }

}

