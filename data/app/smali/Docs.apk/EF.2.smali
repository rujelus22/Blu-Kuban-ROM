.class public final enum LEF;
.super Ljava/lang/Enum;
.source "TrixGLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LEF;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LEF;

.field private static final synthetic a:[LEF;

.field public static final enum b:LEF;

.field public static final enum c:LEF;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, LEF;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2, v2}, LEF;-><init>(Ljava/lang/String;II)V

    sput-object v0, LEF;->a:LEF;

    .line 17
    new-instance v0, LEF;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v3, v3}, LEF;-><init>(Ljava/lang/String;II)V

    sput-object v0, LEF;->b:LEF;

    .line 18
    new-instance v0, LEF;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4, v4}, LEF;-><init>(Ljava/lang/String;II)V

    sput-object v0, LEF;->c:LEF;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [LEF;

    sget-object v1, LEF;->a:LEF;

    aput-object v1, v0, v2

    sget-object v1, LEF;->b:LEF;

    aput-object v1, v0, v3

    sget-object v1, LEF;->c:LEF;

    aput-object v1, v0, v4

    sput-object v0, LEF;->a:[LEF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, LEF;->a:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LEF;
    .registers 2
    .parameter

    .prologue
    .line 15
    const-class v0, LEF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LEF;

    return-object v0
.end method

.method public static values()[LEF;
    .registers 1

    .prologue
    .line 15
    sget-object v0, LEF;->a:[LEF;

    invoke-virtual {v0}, [LEF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEF;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, LEF;->a:I

    return v0
.end method
