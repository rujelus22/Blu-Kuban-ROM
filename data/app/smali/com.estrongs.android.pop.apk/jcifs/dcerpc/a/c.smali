.class Ljcifs/dcerpc/a/c;
.super Ljcifs/smb/bi;


# instance fields
.field final synthetic a:Ljcifs/dcerpc/a/b;


# direct methods
.method constructor <init>(Ljcifs/dcerpc/a/b;Ljcifs/dcerpc/a/p;)V
    .registers 4

    iput-object p1, p0, Ljcifs/dcerpc/a/c;->a:Ljcifs/dcerpc/a/b;

    invoke-direct {p0}, Ljcifs/smb/bi;-><init>()V

    iget-object v0, p2, Ljcifs/dcerpc/a/p;->a:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/dcerpc/a/c;->b:Ljava/lang/String;

    iget v0, p2, Ljcifs/dcerpc/a/p;->b:I

    iput v0, p0, Ljcifs/dcerpc/a/c;->c:I

    iget-object v0, p2, Ljcifs/dcerpc/a/p;->c:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/dcerpc/a/c;->d:Ljava/lang/String;

    return-void
.end method
