.class Lr/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field private a:Ln/al;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lr/g;)V
    .registers 2
    .parameter

    .prologue
    .line 332
    invoke-direct {p0}, Lr/l;-><init>()V

    return-void
.end method

.method static synthetic a(Lr/l;)Ln/al;
    .registers 2
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lr/l;->a:Ln/al;

    return-object v0
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    if-nez p2, :cond_4

    .line 338
    iput-object p3, p0, Lr/l;->a:Ln/al;

    .line 340
    :cond_4
    return-void
.end method
