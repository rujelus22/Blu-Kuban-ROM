.class public Le/B;
.super Ljava/lang/Object;


# static fields
.field public static final a:Le/w;

.field public static final b:Le/w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Le/C;

    invoke-direct {v0}, Le/C;-><init>()V

    sput-object v0, Le/B;->a:Le/w;

    new-instance v0, Le/D;

    invoke-direct {v0}, Le/D;-><init>()V

    sput-object v0, Le/B;->b:Le/w;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
