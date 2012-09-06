.class final Lcom/google/android/youtube/app/ui/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/youtube/app/ui/bt;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bt;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/by;->b:Lcom/google/android/youtube/app/ui/bt;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/by;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/by;->a:Landroid/app/Activity;

    const v1, 0x7f0b01fa

    const-string v2, "yt_add_screen"

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/by;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/by;->b:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->e(Lcom/google/android/youtube/app/ui/bt;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "ScreenPairingShowMeHowClicked"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 176
    return-void
.end method
