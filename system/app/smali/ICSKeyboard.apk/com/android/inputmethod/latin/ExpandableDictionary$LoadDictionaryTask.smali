.class Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;
.super Ljava/lang/Thread;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDictionaryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary;)V
    .registers 2
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary;Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->loadDictionaryAsync()V

    .line 554
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    #getter for: Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->access$0(Lcom/android/inputmethod/latin/ExpandableDictionary;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 555
    :try_start_c
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    const/4 v2, 0x0

    #setter for: Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z
    invoke-static {v0, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->access$1(Lcom/android/inputmethod/latin/ExpandableDictionary;Z)V

    .line 554
    monitor-exit v1

    .line 557
    return-void

    .line 554
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method
