.class public Lcom/estrongs/android/pop/fs/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/netfs/INetRefreshCallback;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/fs/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/h;->a:Ljava/lang/String;

    return-void
.end method

.method public operation_end(Ljava/lang/Object;)V
    .registers 9

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    if-eqz v6, :cond_20

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    const v5, 0x30002

    :goto_11
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/fs/h;->a:Ljava/lang/String;

    const v4, 0x1000e

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v6, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    :cond_20
    return-void

    :cond_21
    const v5, 0x30005

    goto :goto_11
.end method

.method public operation_start()V
    .registers 8

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/fs/h;->a:Ljava/lang/String;

    const v4, 0x1000d

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v6, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    :cond_18
    return-void
.end method
