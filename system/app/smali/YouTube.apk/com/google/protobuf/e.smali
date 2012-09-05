.class public final Lcom/google/protobuf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/protobuf/e;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 143
    new-instance v0, Lcom/google/protobuf/e;

    invoke-direct {v0}, Lcom/google/protobuf/e;-><init>()V

    sput-object v0, Lcom/google/protobuf/e;->b:Lcom/google/protobuf/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/e;->a:Ljava/util/Map;

    .line 142
    return-void
.end method

.method public static a()Lcom/google/protobuf/e;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/protobuf/e;->b:Lcom/google/protobuf/e;

    return-object v0
.end method
