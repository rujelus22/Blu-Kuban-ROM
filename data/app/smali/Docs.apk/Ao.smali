.class public LAo;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Lxz;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, LAo;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a_(Z)V
    .registers 3
    .parameter

    .prologue
    .line 220
    if-eqz p1, :cond_8

    .line 221
    iget-object v0, p0, LAo;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()V

    .line 225
    :goto_7
    return-void

    .line 223
    :cond_8
    iget-object v0, p0, LAo;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->p()V

    goto :goto_7
.end method
