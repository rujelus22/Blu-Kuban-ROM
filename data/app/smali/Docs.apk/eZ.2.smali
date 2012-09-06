.class public interface abstract LeZ;
.super Ljava/lang/Object;
.source "FeatureChecker.java"


# static fields
.field public static final a:LeZ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lfa;

    invoke-direct {v0}, Lfa;-><init>()V

    sput-object v0, LeZ;->a:LeZ;

    return-void
.end method


# virtual methods
.method public abstract a(LeV;)Z
.end method
