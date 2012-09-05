.class Lcom/google/googlenav/friend/reporting/m;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/reporting/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/reporting/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/friend/reporting/l;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Long;)Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/friend/reporting/l;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/l;->b(J)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/m;->a([Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
