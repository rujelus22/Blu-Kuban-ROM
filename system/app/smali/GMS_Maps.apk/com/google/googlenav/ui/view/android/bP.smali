.class Lcom/google/googlenav/ui/view/android/bp;
.super Lcom/google/googlenav/ui/ba;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bm;Landroid/content/Context;Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;Landroid/support/v4/view/ViewPager;Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/bc;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bp;->a:Lcom/google/googlenav/ui/view/android/bm;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/ba;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;Landroid/support/v4/view/ViewPager;Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/bc;)V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/ba;->onTabChanged(Ljava/lang/String;)V

    .line 212
    const-string v0, ""

    .line 213
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bp;->a:Lcom/google/googlenav/ui/view/android/bm;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/bm;->c(Lcom/google/googlenav/ui/view/android/bm;)Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->getCurrentTab()I

    move-result v1

    .line 214
    packed-switch v1, :pswitch_data_40

    .line 223
    :goto_12
    const/4 v1, 0x5

    const-string v2, "t"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 215
    :pswitch_36
    const-string v0, "ab"

    goto :goto_12

    .line 217
    :pswitch_39
    const-string v0, "ph"

    goto :goto_12

    .line 219
    :pswitch_3c
    const-string v0, "po"

    goto :goto_12

    .line 214
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method
