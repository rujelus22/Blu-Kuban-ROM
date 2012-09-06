.class Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/EnumSet;


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;->delegate:Ljava/util/EnumSet;

    .line 109
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/collect/ImmutableEnumSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableEnumSet;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method
