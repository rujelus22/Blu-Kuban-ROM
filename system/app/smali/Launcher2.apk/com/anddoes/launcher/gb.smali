.class final Lcom/anddoes/launcher/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1502
    iput v0, p0, Lcom/anddoes/launcher/gb;->b:I

    .line 1503
    iput v0, p0, Lcom/anddoes/launcher/gb;->c:I

    .line 1500
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/anddoes/launcher/gb;-><init>()V

    return-void
.end method
