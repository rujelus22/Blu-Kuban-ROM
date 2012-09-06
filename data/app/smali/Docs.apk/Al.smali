.class public LAl;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements LuX;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, LAl;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, LAl;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;I)V

    .line 180
    iget-object v0, p0, LAl;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0, p1}, LyC;->a(I)V

    .line 181
    return-void
.end method
