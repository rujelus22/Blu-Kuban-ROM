.class LJU;
.super Ljava/lang/Object;
.source "ChromeVisibilityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LJT;


# direct methods
.method constructor <init>(LJT;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, LJU;->a:LJT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 34
    const-string v0, "ChromeVisibilityController"

    const-string v1, "Hiding chrome"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, LJU;->a:LJT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LJT;->a(Z)V

    .line 36
    return-void
.end method
