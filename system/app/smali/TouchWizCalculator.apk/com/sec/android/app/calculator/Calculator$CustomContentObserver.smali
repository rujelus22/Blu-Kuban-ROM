.class public Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/calculator/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .registers 3
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;->this$0:Lcom/sec/android/app/calculator/Calculator;

    .line 375
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 376
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/Calculator;->checkOrientation()V

    .line 384
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 385
    return-void
.end method
