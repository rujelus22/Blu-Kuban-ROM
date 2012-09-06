.class public final enum LEn;
.super Ljava/lang/Enum;
.source "TextFormatingSpan.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LEn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LEn;

.field private static final synthetic a:[LEn;

.field public static final enum b:LEn;

.field public static final enum c:LEn;


# instance fields
.field final a:D

.field final b:D


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-wide v8, 0x3fe5555555555555L

    .line 34
    new-instance v0, LEn;

    const-string v1, "NORMAL"

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0

    invoke-direct/range {v0 .. v6}, LEn;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, LEn;->a:LEn;

    .line 35
    new-instance v3, LEn;

    const-string v4, "SUBSCRIPT"

    const-wide/high16 v6, -0x4020

    move v5, v10

    invoke-direct/range {v3 .. v9}, LEn;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, LEn;->b:LEn;

    .line 36
    new-instance v3, LEn;

    const-string v4, "SUPERSCRIPT"

    const-wide/high16 v6, 0x3fe0

    move v5, v11

    invoke-direct/range {v3 .. v9}, LEn;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, LEn;->c:LEn;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [LEn;

    sget-object v1, LEn;->a:LEn;

    aput-object v1, v0, v2

    sget-object v1, LEn;->b:LEn;

    aput-object v1, v0, v10

    sget-object v1, LEn;->c:LEn;

    aput-object v1, v0, v11

    sput-object v0, LEn;->a:[LEn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDD)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-wide p3, p0, LEn;->a:D

    .line 43
    iput-wide p5, p0, LEn;->b:D

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LEn;
    .registers 2
    .parameter

    .prologue
    .line 33
    const-class v0, LEn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LEn;

    return-object v0
.end method

.method public static values()[LEn;
    .registers 1

    .prologue
    .line 33
    sget-object v0, LEn;->a:[LEn;

    invoke-virtual {v0}, [LEn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEn;

    return-object v0
.end method
