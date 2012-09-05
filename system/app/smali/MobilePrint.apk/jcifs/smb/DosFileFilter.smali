.class public Ljcifs/smb/DosFileFilter;
.super Ljava/lang/Object;
.source "DosFileFilter.java"

# interfaces
.implements Ljcifs/smb/SmbFileFilter;


# instance fields
.field protected attributes:I

.field protected wildcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "wildcard"
    .parameter "attributes"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    .line 33
    iput p2, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    .line 34
    return-void
.end method


# virtual methods
.method public accept(Ljcifs/smb/SmbFile;)Z
    .registers 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    iget v1, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
