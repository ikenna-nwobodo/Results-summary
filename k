<div class="containerm">

    <main>
        <h1>Dashboard</h1>

        <div class="insights">
            <div class="sales">
                <span class="material-symbols-outlined">
                    analytics
                </span>
                <div class="middle">
                    <div class="left">
                        <h1>Total Complaints</h1>
                        <h2>@complaintList.Count() </h2>
                    </div>

                </div>
                <small class="text-muted">Last 24 Hours</small>
            </div>
            <!------------------END OF SALES------------------>
            <div class="expenses">
                <span class="material-symbols-outlined">
                    priority_high
                </span>
                <div class="middle">
                    <div class="left">
                        <h1>Unresolved Complaints</h1>
                        <h2>@complaintList.Count(t => !t.IsCompleted)</h2>
                    </div>

                </div>
                <small class="text-muted">Last 24 Hours</small>
            </div>
            <!------------------END OF EXPENSES------------------>
            <div class="income">
                <span class="material-symbols-outlined">
                    done
                </span>
                <div class="middle">
                    <div class="left">
                        <h1>Resolved Complaints</h1>
                        <h2>@complaintList.Count(t => t.IsCompleted)</h2>
                    </div>
                </div>
                <small class="text-muted">Last 24 Hours</small>
            </div>
            <!------------------END OF INCOME------------------>
        </div>
        <div class="recent-orders">
            <h1>Recent Complaints</h1>
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Complaint Description</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                   @foreach (var p in complaintList.OrderByDescending(p => p.Id).Take(5))
                    {
                        <tr>
                            <td>@p.Product</td>
                            <td>@p.Description</td>
                            <td class="warning">@CheckStatus(p.IsCompleted)</td>
                            <td class="primary"><a href="#">Details</a></td>
                        </tr>
                    
                    }

                </tbody>
            </table>
            <a href="complaintlist">Show All</a>
           
        </div>
    </main>
    <!-------------END OF MAIN---------->

</div>
