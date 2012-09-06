.class public abstract Lcom/google/zxing/common/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/zxing/common/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/common/h;

    invoke-direct {v0}, Lcom/google/zxing/common/h;-><init>()V

    sput-object v0, Lcom/google/zxing/common/l;->a:Lcom/google/zxing/common/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/zxing/common/l;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/zxing/common/l;->a:Lcom/google/zxing/common/l;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;
.end method

.method public abstract a(Lcom/google/zxing/common/b;IILcom/google/zxing/common/n;)Lcom/google/zxing/common/b;
.end method
