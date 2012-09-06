.class public Lcom/google/android/apps/googlevoice/util/AndroidViewUtils;
.super Ljava/lang/Object;
.source "AndroidViewUtils.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/util/ViewUtils;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(Landroid/app/Activity;I)Landroid/view/View;
    .registers 4
    .parameter "activity"
    .parameter "id"

    .prologue
    .line 16
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundResource(Landroid/view/View;I)V
    .registers 3
    .parameter "view"
    .parameter "resid"

    .prologue
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    return-void
.end method
