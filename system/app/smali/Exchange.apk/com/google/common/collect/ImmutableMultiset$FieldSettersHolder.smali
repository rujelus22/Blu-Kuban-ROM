.class Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldSettersHolder"
.end annotation


# static fields
.field static final MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Serialization$FieldSetter",
            "<",
            "Lcom/google/common/collect/ImmutableMultiset;",
            ">;"
        }
    .end annotation
.end field

.field static final SIZE_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Serialization$FieldSetter",
            "<",
            "Lcom/google/common/collect/ImmutableMultiset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 156
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    .line 158
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->SIZE_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
