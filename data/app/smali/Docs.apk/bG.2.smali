.class public LbG;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbG;->a:Ljava/lang/String;

    iput-wide p2, p0, LbG;->a:J

    return-void
.end method
