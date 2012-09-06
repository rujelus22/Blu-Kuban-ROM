.class public interface abstract Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;
.super Ljava/lang/Object;
.source "HandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/HandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CancelStruct"
.end annotation


# static fields
.field public static final UNCANCELABLE:Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 168
    new-instance v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct$1;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct$1;-><init>()V

    sput-object v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;->UNCANCELABLE:Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;

    return-void
.end method


# virtual methods
.method public abstract isCanceled()Z
.end method
