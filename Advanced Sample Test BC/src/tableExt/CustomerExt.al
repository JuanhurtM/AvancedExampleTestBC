tableextension 50500 "CustomerTable Ext." extends Customer
{
    fields
    {
        field(10001; RewardPoints; Integer)
        {
            MinValue = 0;
        }
    }
}