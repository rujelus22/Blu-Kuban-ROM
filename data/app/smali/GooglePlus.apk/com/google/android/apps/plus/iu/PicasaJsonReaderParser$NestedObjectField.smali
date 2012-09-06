.class public Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$NestedObjectField;
.super Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NestedObjectField"
.end annotation


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;>;"
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$NestedObjectField;->map:Ljava/util/Map;

    .line 90
    return-void
.end method
