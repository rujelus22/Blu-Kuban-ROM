.class Lcom/google/android/apps/plus/views/MultiLineLayout$1;
.super Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;
.source "MultiLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/MultiLineLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/MultiLineLayout;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$1;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;-><init>(Lcom/google/android/apps/plus/views/MultiLineLayout;Lcom/google/android/apps/plus/views/MultiLineLayout$1;)V

    return-void
.end method


# virtual methods
.method protected layout(Landroid/view/View;IIII)V
    .registers 8
    .parameter "child"
    .parameter "leftParam"
    .parameter "topParam"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 28
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 29
    return-void
.end method
