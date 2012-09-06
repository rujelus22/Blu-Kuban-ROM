.class public Laf/l;
.super Laf/k;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Laf/k;-><init>()V

    .line 19
    iput p1, p0, Laf/l;->a:I

    .line 20
    iput-object p2, p0, Laf/l;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Laf/l;->a:I

    return v0
.end method
