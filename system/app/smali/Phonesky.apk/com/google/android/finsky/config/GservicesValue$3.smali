.class final Lcom/google/android/finsky/config/GservicesValue$3;
.super Lcom/google/android/finsky/config/GservicesValue;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/config/GservicesValue",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected retrieve(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .parameter "key"

    .prologue
    .line 78
    invoke-static {}, Lcom/google/android/finsky/config/GservicesValue;->access$100()Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/config/GservicesValue$3;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue$3;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lcom/google/android/finsky/config/GservicesValue$GservicesReader;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/config/GservicesValue$3;->retrieve(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
