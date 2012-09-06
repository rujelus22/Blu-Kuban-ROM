.class public LAn;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Lxu;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, LAn;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 211
    if-nez p1, :cond_7

    .line 212
    iget-object v0, p0, LAn;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->p()V

    .line 214
    :cond_7
    return-void
.end method
