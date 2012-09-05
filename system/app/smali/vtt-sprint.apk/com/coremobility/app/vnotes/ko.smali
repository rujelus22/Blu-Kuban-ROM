.class final Lcom/coremobility/app/vnotes/ko;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ko;->a:Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ko;->a:Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a(Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;)V

    return-void
.end method
