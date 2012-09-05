.class public Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/honeycomb/phone/b;


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/google/android/youtube/app/honeycomb/phone/aq;

.field private c:Lcom/google/android/youtube/app/b/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 41
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->r()Lcom/google/android/youtube/app/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c:Lcom/google/android/youtube/app/b/i;

    .line 42
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->b:Lcom/google/android/youtube/app/honeycomb/phone/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/aq;->i()V

    .line 78
    return-void
.end method

.method protected final c()V
    .registers 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->e()Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    move-result-object v0

    sget v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c(I)V

    .line 65
    return-void
.end method

.method protected final d()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->b:Lcom/google/android/youtube/app/honeycomb/phone/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/aq;->i()V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->setContentView(I)V

    .line 48
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->b(I)V

    .line 49
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/aq;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->b:Lcom/google/android/youtube/app/honeycomb/phone/aq;

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->b:Lcom/google/android/youtube/app/honeycomb/phone/aq;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ap;)V

    .line 51
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ap;)V

    .line 52
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-direct {v0, p0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;Lcom/google/android/youtube/app/honeycomb/phone/b;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ap;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c:Lcom/google/android/youtube/app/b/i;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->b:Lcom/google/android/youtube/app/honeycomb/phone/aq;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/b/i;->a(Lcom/google/android/youtube/app/b/k;)V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c:Lcom/google/android/youtube/app/b/i;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->b:Lcom/google/android/youtube/app/honeycomb/phone/aq;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/b/i;->b(Lcom/google/android/youtube/app/b/k;)V

    .line 59
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->onDestroy()V

    .line 60
    return-void
.end method
