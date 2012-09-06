.class final Ljcifs/netbios/h;
.super Ljava/lang/Object;


# instance fields
.field a:Ljcifs/netbios/b;

.field b:Ljcifs/netbios/g;

.field c:J


# direct methods
.method constructor <init>(Ljcifs/netbios/b;Ljcifs/netbios/g;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/h;->a:Ljcifs/netbios/b;

    iput-object p2, p0, Ljcifs/netbios/h;->b:Ljcifs/netbios/g;

    iput-wide p3, p0, Ljcifs/netbios/h;->c:J

    return-void
.end method
