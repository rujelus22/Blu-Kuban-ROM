.class public Lej;
.super Ljava/lang/Object;
.source "DefaultTitleBarListener.java"

# interfaces
.implements LIC;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final a:LdL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lej;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lej;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;LdL;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lej;->a:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lej;->a:LdL;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lej;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 31
    if-nez p1, :cond_a

    .line 32
    sget-object v0, Lej;->a:Ljava/lang/String;

    const-string v1, "null accountName"

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_9
    return-void

    .line 34
    :cond_a
    iget-object v0, p0, Lej;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public b()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lej;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;

    if-nez v0, :cond_c

    iget-object v0, p0, Lej;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;

    if-eqz v0, :cond_d

    .line 67
    :cond_c
    :goto_c
    return-void

    .line 54
    :cond_d
    iget-object v0, p0, Lej;->a:Landroid/app/Activity;

    sget-object v1, Lhf;->c:Lhf;

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lhf;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    const-string v1, "wasTaskRoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lej;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lej;->b(Ljava/lang/String;)V

    .line 76
    return-void
.end method
