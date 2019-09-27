package com.nb.model.ke;

import java.math.BigDecimal;

public class NbInstantaneous extends NbInstantaneousKey {
    private BigDecimal totalFlow;

    public BigDecimal getTotalFlow() {
        return totalFlow;
    }

    public void setTotalFlow(BigDecimal totalFlow) {
        this.totalFlow = totalFlow;
    }
}