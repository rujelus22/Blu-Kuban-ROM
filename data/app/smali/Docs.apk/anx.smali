.class final enum Lanx;
.super Ljava/lang/Enum;
.source "Key.java"

# interfaces
.implements Lanv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanx;",
        ">;",
        "Lanv;"
    }
.end annotation


# static fields
.field public static final enum a:Lanx;

.field private static final synthetic a:[Lanx;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 374
    new-instance v0, Lanx;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lanx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanx;->a:Lanx;

    .line 373
    const/4 v0, 0x1

    new-array v0, v0, [Lanx;

    sget-object v1, Lanx;->a:Lanx;

    aput-object v1, v0, v2

    sput-object v0, Lanx;->a:[Lanx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanx;
    .registers 2
    .parameter

    .prologue
    .line 373
    const-class v0, Lanx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanx;

    return-object v0
.end method

.method public static values()[Lanx;
    .registers 1

    .prologue
    .line 373
    sget-object v0, Lanx;->a:[Lanx;

    invoke-virtual {v0}, [Lanx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanx;

    return-object v0
.end method


# virtual methods
.method public a()Lanv;
    .registers 3

    .prologue
    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Key already has no attributes."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    const-string v0, "[none]"

    return-object v0
.end method
