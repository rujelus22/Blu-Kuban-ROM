.class public interface abstract Ljcifs/dcerpc/c;
.super Ljava/lang/Object;


# static fields
.field public static final e:Ljcifs/dcerpc/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljcifs/dcerpc/i;

    const-string v1, "8a885d04-1ceb-11c9-9fe8-08002b104860"

    invoke-direct {v0, v1}, Ljcifs/dcerpc/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/dcerpc/c;->e:Ljcifs/dcerpc/i;

    return-void
.end method
