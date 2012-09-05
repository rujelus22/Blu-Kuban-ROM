.class Leu/chainfire/supersu/Logs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/Logs;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Logs;)V
    .registers 2

    iput-object p1, p0, Leu/chainfire/supersu/Logs$1;->a:Leu/chainfire/supersu/Logs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 10

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Leu/chainfire/supersu/Logs$Log;

    check-cast p2, Leu/chainfire/supersu/Logs$Log;

    iget-object v2, p1, Leu/chainfire/supersu/Logs$Log;->k:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p2, Leu/chainfire/supersu/Logs$Log;->k:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_26

    iget v2, p1, Leu/chainfire/supersu/Logs$Log;->i:I

    iget v3, p2, Leu/chainfire/supersu/Logs$Log;->i:I

    if-ne v2, v3, :cond_1e

    const/4 v0, 0x0

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    iget v2, p1, Leu/chainfire/supersu/Logs$Log;->i:I

    iget v3, p2, Leu/chainfire/supersu/Logs$Log;->i:I

    if-gt v2, v3, :cond_1d

    move v0, v1

    goto :goto_1d

    :cond_26
    cmp-long v2, v2, v4

    if-gtz v2, :cond_1d

    move v0, v1

    goto :goto_1d
.end method
