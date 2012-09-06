.class final Lcom/google/android/youtube/app/ui/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/google/android/youtube/app/ui/am;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/am;Landroid/app/Dialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/an;->b:Lcom/google/android/youtube/app/ui/am;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/an;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    packed-switch p3, :pswitch_data_44

    .line 100
    :goto_3
    return-void

    .line 89
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/an;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/an;->b:Lcom/google/android/youtube/app/ui/am;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/am;->a(Lcom/google/android/youtube/app/ui/am;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 91
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/an;->b:Lcom/google/android/youtube/app/ui/am;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/am;->a(Lcom/google/android/youtube/app/ui/am;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/an;->b:Lcom/google/android/youtube/app/ui/am;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/am;->a(Lcom/google/android/youtube/app/ui/am;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->V()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0b01fb

    invoke-static {v2, v0, v3}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_3

    .line 96
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/an;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/an;->b:Lcom/google/android/youtube/app/ui/am;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/am;->a(Lcom/google/android/youtube/app/ui/am;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/b;->a(Landroid/app/Activity;)V

    goto :goto_3

    .line 87
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_4
        :pswitch_34
    .end packed-switch
.end method
