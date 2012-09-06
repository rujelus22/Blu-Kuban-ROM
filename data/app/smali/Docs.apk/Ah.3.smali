.class public LAh;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements LuT;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, LAh;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 687
    iget-object v0, p0, LAh;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuP;

    move-result-object v0

    invoke-virtual {v0}, LuP;->b()Ljava/lang/String;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_13

    .line 689
    iget-object v1, p0, LAh;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v1, v0}, LyC;->b(Ljava/lang/String;)V

    .line 691
    :cond_13
    iget-object v0, p0, LAh;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuP;

    move-result-object v0

    invoke-virtual {v0}, LuP;->a()Ljava/lang/String;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_26

    .line 693
    iget-object v1, p0, LAh;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v1, v0}, LyC;->c(Ljava/lang/String;)V

    .line 695
    :cond_26
    iget-object v0, p0, LAh;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    .line 696
    return-void
.end method
