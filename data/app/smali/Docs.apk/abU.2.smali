.class public LabU;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements LabZ;


# instance fields
.field final synthetic a:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method public constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, LabU;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 3

    .prologue
    .line 134
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, LabU;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
