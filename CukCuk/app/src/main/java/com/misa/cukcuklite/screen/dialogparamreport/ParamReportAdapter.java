package com.misa.cukcuklite.screen.dialogparamreport;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.misa.cukcuklite.R;
import com.misa.cukcuklite.data.model.ParamReport;

import java.util.List;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

public class ParamReportAdapter extends RecyclerView.Adapter<ParamReportAdapter.ViewHolder> {
    private List<ParamReport> mParamReports;
    private Context mContext;
    private OnClickParam mOnClickParam;
    private LayoutInflater mInflater;
    private int indexSelect;

    public ParamReportAdapter(Context context, List<ParamReport> paramReports, OnClickParam onClickParam) {
        mParamReports = paramReports;
        mContext = context;
        mOnClickParam = onClickParam;
        mInflater = LayoutInflater.from(context);
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = mInflater.inflate(R.layout.item_param_report_dialog, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, final int position) {
        holder.tvName.setText(mParamReports.get(position).getTitleReportDetail());
        if (position == indexSelect) {
            holder.ivCheck.setVisibility(View.VISIBLE);
        } else {
            holder.ivCheck.setVisibility(View.INVISIBLE);
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                indexSelect = position;
                notifyDataSetChanged();
            }
        });
    }

    @Override
    public int getItemCount() {
        return mParamReports != null ? mParamReports.size() : 0;
    }

    interface OnClickParam {
        void onClick(ParamReport paramReport);
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        private TextView tvName;
        private ImageView ivCheck;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            tvName=itemView.findViewById(R.id.tvName);
            ivCheck=itemView.findViewById(R.id.ivCheck);
        }
    }
}
