.class public abstract Lcom/google/android/youtube/app/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/app/Activity;

.field protected final b:Lcom/google/android/youtube/core/Analytics;

.field private final c:Lcom/google/android/youtube/app/o;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ao;->c:Lcom/google/android/youtube/app/o;

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->b:Lcom/google/android/youtube/core/Analytics;

    .line 35
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/ao;->d:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    .line 107
    :pswitch_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 57
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->c:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->a()V

    move v0, v1

    .line 58
    goto :goto_9

    .line 61
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->c:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->b()V

    move v0, v1

    .line 62
    goto :goto_9

    .line 65
    :pswitch_18
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "Search"

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 66
    goto :goto_9

    .line 70
    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->c:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->c()V

    move v0, v1

    .line 71
    goto :goto_9

    .line 74
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadFromMenu"

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/app/Activity;)V

    move v0, v1

    .line 76
    goto :goto_9

    .line 79
    :pswitch_4a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "QuickRecord"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/g;->b(Landroid/app/Activity;)V

    move v0, v1

    .line 81
    goto :goto_9

    .line 84
    :pswitch_58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->c:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->j()V

    move v0, v1

    .line 85
    goto :goto_9

    .line 88
    :pswitch_5f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->d:Ljava/lang/String;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    const v2, 0x7f0a01a5

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ao;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_6e
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    move v0, v1

    .line 93
    goto :goto_9

    .line 88
    :cond_79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    const v2, 0x7f0a01a4

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    .line 96
    :pswitch_83
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    const/16 v2, 0x3f1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    :goto_92
    move v0, v1

    .line 104
    goto/16 :goto_9

    .line 99
    :cond_95
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 100
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ao;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0a01a6

    invoke-static {v3, v0, v4}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_92

    .line 55
    :pswitch_data_b4
    .packed-switch 0x7f0900c8
        :pswitch_32
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4a
        :pswitch_8
        :pswitch_18
        :pswitch_58
        :pswitch_83
        :pswitch_5f
        :pswitch_a
        :pswitch_11
        :pswitch_2b
    .end packed-switch
.end method
