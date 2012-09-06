.class Lcom/google/googlenav/friend/reporting/t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/reporting/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/reporting/s;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/googlenav/friend/reporting/t;->a:Lcom/google/googlenav/friend/reporting/s;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Long;)Ljava/lang/Void;
    .registers 5
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/t;->a:Lcom/google/googlenav/friend/reporting/s;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/s;->b(J)V

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/t;->a([Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
