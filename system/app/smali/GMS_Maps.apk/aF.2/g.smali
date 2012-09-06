.class public Laf/g;
.super Laf/k;
.source "SourceFile"


# static fields
.field public static final a:Laf/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Laf/g;

    invoke-direct {v0}, Laf/g;-><init>()V

    sput-object v0, Laf/g;->a:Laf/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Laf/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 15
    const v0, 0x13d65e

    return v0
.end method
