.class Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;
.super Ljava/lang/Object;
.source "CustomListAdapter.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorAdapterChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)V

    return-void
.end method


# virtual methods
.method public OnCursorChanged()V
    .registers 3

    .prologue
    .line 272
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 274
    const-string v0, "CustomListAdapter"

    const-string v1, "OnCursorChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->access$200(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mOnItemChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->access$300(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mOnItemChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->access$300(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;->onItemChange()V

    .line 282
    :cond_27
    return-void
.end method

.method public OnCursorInvalidated()V
    .registers 3

    .prologue
    .line 286
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 288
    const-string v0, "CustomListAdapter"

    const-string v1, "OnCursorInvalidated called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->access$200(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mOnItemChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->access$300(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mOnItemChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->access$300(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;->onItemInvalidate()V

    .line 296
    :cond_27
    return-void
.end method
