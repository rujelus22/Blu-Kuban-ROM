.class Lcom/google/android/apps/reader/app/ItemActivity$DataObserver;
.super Landroid/database/DataSetObserver;
.source "ItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/ItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/ItemActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/ItemActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/apps/reader/app/ItemActivity$DataObserver;->this$0:Lcom/google/android/apps/reader/app/ItemActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/ItemActivity;Lcom/google/android/apps/reader/app/ItemActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/ItemActivity$DataObserver;-><init>(Lcom/google/android/apps/reader/app/ItemActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity$DataObserver;->this$0:Lcom/google/android/apps/reader/app/ItemActivity;

    #calls: Lcom/google/android/apps/reader/app/ItemActivity;->handleItemChanged()V
    invoke-static {v0}, Lcom/google/android/apps/reader/app/ItemActivity;->access$100(Lcom/google/android/apps/reader/app/ItemActivity;)V

    .line 287
    return-void
.end method
