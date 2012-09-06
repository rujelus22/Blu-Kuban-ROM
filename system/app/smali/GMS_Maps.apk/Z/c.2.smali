.class public interface abstract Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz/H;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lz/H;

    invoke-direct {v0}, Lz/H;-><init>()V

    sput-object v0, Lz/c;->a:Lz/H;

    return-void
.end method


# virtual methods
.method public abstract a(Lz/b;Lz/G;)V
.end method
