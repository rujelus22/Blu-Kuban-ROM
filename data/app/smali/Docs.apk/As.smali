.class public LAs;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, LAs;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, LAs;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    .line 390
    return-void
.end method
