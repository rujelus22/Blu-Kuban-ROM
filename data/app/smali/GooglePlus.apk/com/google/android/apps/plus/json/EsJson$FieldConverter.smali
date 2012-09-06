.class Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
.super Ljava/lang/Object;
.source "EsJson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/json/EsJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldConverter"
.end annotation


# instance fields
.field field:Ljava/lang/reflect/Field;

.field firstChar:C

.field itemType:I

.field json:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<*>;"
        }
    .end annotation
.end field

.field key:Ljava/lang/String;

.field type:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/json/EsJson$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;-><init>()V

    return-void
.end method
