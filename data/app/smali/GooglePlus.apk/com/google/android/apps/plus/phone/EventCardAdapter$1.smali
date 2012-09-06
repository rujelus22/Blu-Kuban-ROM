.class Lcom/google/android/apps/plus/phone/EventCardAdapter$1;
.super Ljava/lang/Object;
.source "EventCardAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/EventCardAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/ColumnGridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EventCardAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EventCardAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/EventCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 74
    instance-of v0, p1, Lcom/google/android/apps/plus/views/Recyclable;

    if-eqz v0, :cond_9

    .line 75
    check-cast p1, Lcom/google/android/apps/plus/views/Recyclable;

    .end local p1
    invoke-interface {p1}, Lcom/google/android/apps/plus/views/Recyclable;->onRecycle()V

    .line 77
    :cond_9
    return-void
.end method
