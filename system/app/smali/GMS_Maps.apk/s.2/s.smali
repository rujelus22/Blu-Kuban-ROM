.class Ls/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/d;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/cS;

.field final synthetic c:Ls/q;


# direct methods
.method constructor <init>(Ls/q;Ljava/io/File;Lcom/google/android/maps/driveabout/app/cS;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1815
    iput-object p1, p0, Ls/s;->c:Ls/q;

    iput-object p2, p0, Ls/s;->a:Ljava/io/File;

    iput-object p3, p0, Ls/s;->b:Lcom/google/android/maps/driveabout/app/cS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1819
    iget-object v0, p0, Ls/s;->c:Ls/q;

    iget-object v1, p0, Ls/s;->a:Ljava/io/File;

    iget-object v2, p0, Ls/s;->b:Lcom/google/android/maps/driveabout/app/cS;

    invoke-static {v0, v1, v2}, Ls/q;->a(Ls/q;Ljava/io/File;Lcom/google/android/maps/driveabout/app/cS;)V

    .line 1820
    return-void
.end method
