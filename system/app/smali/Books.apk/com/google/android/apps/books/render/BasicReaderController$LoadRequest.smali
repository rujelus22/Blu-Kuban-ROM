.class abstract Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;
.super Ljava/lang/Object;
.source "BasicReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/BasicReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LoadRequest"
.end annotation


# instance fields
.field final offset:Ljava/lang/Integer;

.field final passage:I

.field final requestId:I

.field final synthetic this$0:Lcom/google/android/apps/books/render/BasicReaderController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController;IILjava/lang/Integer;)V
    .registers 5
    .parameter
    .parameter "requestId"
    .parameter "passage"
    .parameter "offset"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p2, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;->requestId:I

    .line 277
    iput p3, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;->passage:I

    .line 278
    iput-object p4, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;->offset:Ljava/lang/Integer;

    .line 279
    return-void
.end method


# virtual methods
.method abstract run()V
.end method
