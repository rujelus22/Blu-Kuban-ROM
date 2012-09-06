.class public Laf/h;
.super Laf/k;
.source "SourceFile"


# static fields
.field public static final a:Laf/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Laf/h;

    invoke-direct {v0}, Laf/h;-><init>()V

    sput-object v0, Laf/h;->a:Laf/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Laf/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 16
    const v0, 0x13d65b

    return v0
.end method
