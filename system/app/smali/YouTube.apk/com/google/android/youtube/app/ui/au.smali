.class final Lcom/google/android/youtube/app/ui/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/m;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/p;

.field final synthetic b:Lcom/google/android/youtube/core/Analytics;

.field final synthetic c:Lcom/google/android/youtube/app/ui/at;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/Analytics;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/au;->c:Lcom/google/android/youtube/app/ui/at;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/au;->a:Lcom/google/android/youtube/app/p;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/au;->b:Lcom/google/android/youtube/core/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f_()V
    .registers 4

    .prologue
    .line 99
    sget-object v0, Lcom/google/android/youtube/app/ui/ba;->a:[I

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/au;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v1}, Lcom/google/android/youtube/app/p;->e()Lcom/google/android/youtube/app/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 111
    :goto_11
    return-void

    .line 101
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/au;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteDisconnectOnScreenNotFound"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/au;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->a()V

    goto :goto_11

    .line 106
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/au;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteRetryOnError"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/au;->a:Lcom/google/android/youtube/app/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/au;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v1}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/au;->c:Lcom/google/android/youtube/app/ui/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/at;->a(Lcom/google/android/youtube/app/ui/at;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/p;->a(Lcom/google/android/a/e/c;Ljava/lang/String;)V

    goto :goto_11

    .line 99
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method
