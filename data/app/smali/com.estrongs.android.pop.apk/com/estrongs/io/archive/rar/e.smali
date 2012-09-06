.class public Lcom/estrongs/io/archive/rar/e;
.super Ljava/lang/Object;

# interfaces
.implements Lde/innosystec/unrar/c;


# instance fields
.field private a:Lcom/estrongs/io/a/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/io/a/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/io/archive/rar/e;->a:Lcom/estrongs/io/a/d;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/e;->a:Lcom/estrongs/io/a/d;

    invoke-interface {v0, p1, p2}, Lcom/estrongs/io/a/d;->a(J)V

    return-void
.end method

.method public a(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
