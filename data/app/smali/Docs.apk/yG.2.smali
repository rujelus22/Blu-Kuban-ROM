.class LyG;
.super Ljava/lang/Object;
.source "TrafficTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LxQ;

.field final synthetic a:LyE;


# direct methods
.method constructor <init>(LyE;LxQ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, LyG;->a:LyE;

    iput-object p2, p0, LyG;->a:LxQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 97
    const-string v0, "14. EXCLUSION OF WARRANTIES\n\n14.1 NOTHING IN THESE TERMS, INCLUDING SECTIONS 14 AND 15, SHALL EXCLUDE OR LIMIT GOOGLE\u2019S WARRANTY OR LIABILITY FOR LOSSES WHICH MAY NOT BE LAWFULLY EXCLUDED OR LIMITED BY APPLICABLE LAW. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES OR CONDITIONS OR THE LIMITATION OR EXCLUSION OF LIABILITY FOR LOSS OR DAMAGE CAUSED BY NEGLIGENCE, BREACH OF CONTRACT OR BREACH OF IMPLIED TERMS, OR INCIDENTAL OR CONSEQUENTIAL DAMAGES. ACCORDINGLY, ONLY THE LIMITATIONS WHICH ARE LAWFUL IN YOUR JURISDICTION WILL APPLY TO YOU AND OUR LIABILITY WILL BE LIMITED TO THE MAXIMUM EXTENT PERMITTED BY LAW.\n\n14.2 YOU EXPRESSLY UNDERSTAND AND AGREE THAT YOUR USE OF THE SERVICES IS AT YOUR SOLE RISK AND THAT THE SERVICES ARE PROVIDED \"AS IS\" AND \"AS AVAILABLE.\"\n\n14.3 IN PARTICULAR, GOOGLE, ITS SUBSIDIARIES AND AFFILIATES, AND ITS LICENSORS DO NOT REPRESENT OR WARRANT TO YOU THAT:\n(A) YOUR USE OF THE SERVICES WILL MEET YOUR REQUIREMENTS,\n(B) YOUR USE OF THE SERVICES WILL BE UNINTERRUPTED, TIMELY, SECURE OR FREE FROM ERROR,\n(C) ANY INFORMATION OBTAINED BY YOU AS A RESULT OF YOUR USE OF THE SERVICES WILL BE ACCURATE OR RELIABLE, AND\n(D) THAT DEFECTS IN THE OPERATION OR FUNCTIONALITY OF ANY SOFTWARE PROVIDED TO YOU AS PART OF THE SERVICES WILL BE CORRECTED.\n\n14.4 ANY MATERIAL DOWNLOADED OR OTHERWISE OBTAINED THROUGH THE USE OF THE SERVICES IS DONE AT YOUR OWN DISCRETION AND RISK AND THAT YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR COMPUTER SYSTEM OR OTHER DEVICE OR LOSS OF DATA THAT RESULTS FROM THE DOWNLOAD OF ANY SUCH MATERIAL.\n\n14.5 NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM GOOGLE OR THROUGH OR FROM THE SERVICES SHALL CREATE ANY WARRANTY NOT EXPRESSLY STATED IN THE TERMS.\n\n14.6 GOOGLE FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES AND CONDITIONS OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO THE IMPLIED WARRANTIES AND CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.\n\n"

    iget-object v1, p0, LyG;->a:LyE;

    invoke-static {v1}, LyE;->a(LyE;)I

    move-result v1

    iget-object v2, p0, LyG;->a:LyE;

    invoke-static {v2}, LyE;->a(LyE;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, LyG;->a:LxQ;

    invoke-virtual {v1}, LxQ;->getController()LvU;

    move-result-object v1

    .line 99
    invoke-interface {v1}, LvU;->a()Lvo;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Lvo;->b()V

    .line 102
    :try_start_21
    invoke-interface {v1, v0}, LvU;->a(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_34

    .line 104
    invoke-interface {v2}, Lvo;->c()V

    .line 107
    iget-object v0, p0, LyG;->a:LyE;

    invoke-static {v0}, LyE;->b(LyE;)I

    .line 108
    iget-object v0, p0, LyG;->a:LyE;

    iget-object v1, p0, LyG;->a:LxQ;

    invoke-static {v0, v1}, LyE;->a(LyE;LxQ;)V

    .line 109
    return-void

    .line 104
    :catchall_34
    move-exception v0

    invoke-interface {v2}, Lvo;->c()V

    throw v0
.end method
