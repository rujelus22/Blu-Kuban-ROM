.class Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StreamTranslationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;-><init>(Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mTranslation:Landroid/util/SparseIntArray;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->access$102(Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    .line 205
    return-void
.end method

.method public onInvalidated()V
    .registers 1

    .prologue
    .line 209
    return-void
.end method
