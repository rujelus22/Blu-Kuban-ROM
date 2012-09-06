.class public Laf/j;
.super Laf/k;
.source "SourceFile"


# static fields
.field public static final a:Laf/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Laf/j;

    invoke-direct {v0}, Laf/j;-><init>()V

    sput-object v0, Laf/j;->a:Laf/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Laf/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 18
    const v0, 0x13d637

    return v0
.end method
