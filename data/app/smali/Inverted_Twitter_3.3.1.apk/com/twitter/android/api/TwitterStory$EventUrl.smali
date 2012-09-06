.class public Lcom/twitter/android/api/TwitterStory$EventUrl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5b9a7ce66f3368abL


# instance fields
.field public final displayUrl:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/api/TwitterStory$EventUrl;->displayUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/api/TwitterStory$EventUrl;->url:Ljava/lang/String;

    return-void
.end method
