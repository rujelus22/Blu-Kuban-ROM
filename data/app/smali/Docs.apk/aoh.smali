.class Laoh;
.super Ljava/lang/Object;
.source "BytecodeGen.java"


# static fields
.field static final a:Laog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Laog;

    invoke-direct {v0}, Laog;-><init>()V

    sput-object v0, Laoh;->a:Laog;

    return-void
.end method
